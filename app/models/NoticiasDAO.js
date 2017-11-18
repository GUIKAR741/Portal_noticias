function NoticiasDAO(connection) {
    this._connection=connection;
}
NoticiasDAO.prototype.getNoticias=function(callback){
    this._connection.query('SELECT * FROM noticias ORDER BY data_criacao DESC',callback);
};
NoticiasDAO.prototype.getNoticia=function (id,callback) {
    this._connection.query('SELECT * FROM noticias WHERE id_noticia='+id.id_noticia,callback);
};
NoticiasDAO.prototype.get5UltimasNoticias=function (callback) {
    this._connection.query('SELECT * FROM noticias ORDER BY data_criacao DESC LIMIT 5',callback);
};
NoticiasDAO.prototype.salvarNoticia=function (campos,callback) {
    this._connection.query('INSERT INTO noticias set ?',campos,callback);
};

module.exports=function () {
    return NoticiasDAO;
};