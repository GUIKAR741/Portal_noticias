module.exports.formulario_inclusao_noticia=function (app,req,res) {
    res.render('admin/form_add_noticia',{validacao:{},noticia:{}});
};
module.exports.noticias_salvar=function (app,req,res) {
    var noticia=req.body;
    var moment = require('moment');
    req.assert('titulo','titulo é obrigatorio').notEmpty();
    req.assert('resumo','resumo é obrigatorio').notEmpty();
    req.assert('resumo','resumo deve conter entre 10 a 100 caracteres').len(10,100);
    req.assert('autor','autor é obrigatorio').notEmpty();
    req.assert('data_noticia','data é obrigatoria').notEmpty();
    req.assert('noticia','noticia é obrigatorio').notEmpty();

    var erros=req.validationErrors();

    var isValidDate = moment(noticia.data_noticia, "YYYY-MM-DD").isValid();
    if (!isValidDate) {
        erros.push({
            location: 'body',
            param: 'data_noticia',
            msg: 'A data da notícia deve estar no formato AAAA-MM-DD',
            value: ''
        });
    }

    if(erros){
        res.render('admin/form_add_noticia',{validacao:erros,noticia:noticia});
        return;
    }

    var connection=app.config.dbConnection();
    var noticiasModel=new app.app.models.NoticiasDAO(connection);

    noticiasModel.salvarNoticia(noticia,function (error,result) {
        res.redirect('/noticias');
    });
};