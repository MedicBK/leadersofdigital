package com.medicbk.medex.repository

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.jdbc.core.JdbcTemplate
import org.springframework.stereotype.Repository
import java.sql.ResultSet

@Repository
class TreatmentRep {

    @Autowired
    private lateinit var jdbc: JdbcTemplate

    data class Record(
        val id: Long,
        val name: String,
        val descr: String? = null,
        val alterNames: List<String>? = null
    ) {
        constructor(rs: ResultSet) : this(
            rs.getLong("id"),
            rs.getString("name"),
            rs.getString("descr") ?: "",
            (rs.getArray("alter_names")?.array as? Array<String>)?.toList() ?: emptyList()
        )

        companion object {
            val rowMapper = { rs: ResultSet, _: Int -> Record(rs) }
        }
    }

    fun get(id: Long): Record? =
        jdbc.query("select * from ref.treatment where id = ? limit 1;", Record.rowMapper, id).firstOrNull()

    fun getAll(): List<Record> =
        jdbc.query("select * from ref.treatment;", Record.rowMapper)
}