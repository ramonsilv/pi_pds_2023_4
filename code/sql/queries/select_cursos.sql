 select  descricao_curso,carga_horaria_curso, modalidade,eixo from  cursos order by descricao_curso;
 select  descricao_curso,modalidade from cursos where modalidade like 'tecnologia%'
 
 select  modalidade,carga_horaria_curso from cursos where modalidade like 'tecnologia%' and carga_horaria_curso > 900

 select descricao_curso,modalidade from cursos where modalidade  not like 'tecnologia%'
