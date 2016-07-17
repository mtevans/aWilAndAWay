"use strict";



const DateHelper = {
  monthAllocation(num){
    const Months = ['filler', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    return Months[num]
  }

}



module.exports = DateHelper;
