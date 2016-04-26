// Jon Wexler
// This function will take text and a specified width to determine at which point to break text lines to the next line
// source: http://www.codewars.com/kata/559c7b6e3c38b1d1b900006f

function format(text, width) {

  // Establish new text
  var new_text = '';
  var arr = text.split(' ');
  var temp = '';

  // loop through characters
  for (var i = 0; i< arr.length; i++){

    // Add words as long as length isn't reached
    if(temp.length + arr[i].length <= width){
      temp += arr[i] + ' ';
    }else{

    // Start a new line when width is reached
    neep = temp.substr(0,temp.length-1) + '\n';
    new_text += neep;
    temp = '';
      --i;
    };
  }
  // remove last \n
  neep = temp.substr(0,temp.length-1);

      // append last piece of text to the new_text before returning it
      new_text += neep;
      temp = '';
      return new_text;
    }

 // Some sample text and examples

 var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec consectet" + "ur risus. Cras vel urna a tellus dapibus consequat. Duis bibendum tincidunt viverra. Ph" + "asellus dictum efficitur sem quis porttitor. Mauris luctus auctor diam id ultrices. Pra" + "esent laoreet in enim ut placerat. Praesent a facilisis turpis.";


 console.log(
  ("Lorem ipsum dolor sit amet,"    + "\n" +
    "consectetur adipiscing elit."   + "\n" +
    "Aliquam nec consectetur risus." + "\n" +
    "Cras vel urna a tellus dapibus" + "\n" +
    "consequat. Duis bibendum"       + "\n" +
    "tincidunt viverra. Phasellus"   + "\n" +
    "dictum efficitur sem quis"      + "\n" +
    "porttitor. Mauris luctus"       + "\n" +
    "auctor diam id ultrices."       + "\n" +
    "Praesent laoreet in enim ut"    + "\n" +
    "placerat. Praesent a facilisis" + "\n" +
    "turpis.") == format(text, 30));

 console.log(format(text, 30));
 console.log("");
 console.log(("Lorem ipsum dolor sit amet,"    + "\n" +
  "consectetur adipiscing elit."   + "\n" +
  "Aliquam nec consectetur risus." + "\n" +
  "Cras vel urna a tellus dapibus" + "\n" +
  "consequat. Duis bibendum"       + "\n" +
  "tincidunt viverra. Phasellus"   + "\n" +
  "dictum efficitur sem quis"      + "\n" +
  "porttitor. Mauris luctus"       + "\n" +
  "auctor diam id ultrices."       + "\n" +
  "Praesent laoreet in enim ut"    + "\n" +
  "placerat. Praesent a facilisis" + "\n" +
  "turpis."));