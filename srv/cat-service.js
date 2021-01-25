module.exports = srv => {

    console.log('Service name: ${srv.name} is served at ${srv.path}')
    srv.after('READ', 'Student', xs => {

        console.log(xs)
        const newStudent = []

        xs.forEach(x => {

            if (x.current_year > 3) {
                x.stream = 'Mba'
            }
            newStudent.push(x);
        })

        console.log(newStudent);
        return newStudent;
    })
}
