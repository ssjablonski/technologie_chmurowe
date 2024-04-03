console.log("Hello World!")

const express = require('express')
const app = express()

app.get('/', (req, res) => {
    console.log('Otrzymalem get')
    res.send('Otrzymalem get!')
})

app.listen(8080, () => {
    console.log('Server is running on port 8080')
})