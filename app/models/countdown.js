const mongoose = require('mongoose')

const countdownSchema = new mongoose.Schema({
  event: {
    type: String,
    required: true
  },
  date: {
    type: Date,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Countdown', countdownSchema)
