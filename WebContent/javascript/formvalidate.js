/**
 * 
 */

	function validate()
	{	
		document.getElementById('demo').innerHTML="Inserted Sucussfully";
		document.getElementById('MyImage').src="image/on.png";
		document.getElementById('demo1').innerHTML=Date()
		/*document.write("Javascript Content")*/
		document.getElementById('demo2').innerHTML="CMS";
		var type=typeof(sum);
		var person={
				name: "samiulla",
				age: 17,
				number: 9738544546,
		};
		var n=10;
		var i, j;
		var str="";
		for (i=0;i<n;i++)
			{
			for (j=0;j<=i;j++)
				{
				str+='*';
				}
			
			}
		/*var str="sheikh college of engineering belgavi";
		var str1="samiulla";*/
/*		var res=up.replace('sheikh',str1);
		var ind=up.indexOf('college');
		var str2="";*/
	/*document.getElementById('demo3').innerHTML=" Sum of All number is "+ sum+ " visit again";
		document.getElementById('demo3').innerHTML=a++;*/
	/*	document.getElementById('demo3').innerHTML=person.name.indexOf();
		document.getElementById('demo4').innerHTML="Index of " +ind;*/
		//document.getElementById('demo3').innerHTML=type;
		var name1="Samiulla,R,Pathan";
		var spl=name1.split(",");
		document.getElementById('demo5').innerHTML=name1[0];
/*		
		for(i=0;i<str.length;i++)
			{
			if (str[i]==" ")
				{
				var na=str[++i].toUpperCase();
				var rep=str.replace(str[++i], na);
				var str2=str+rep;
				alert(str2)
				}
			else
				{
				continue;
				}
			}
		document.getElementById("str1").innerHTML=str2;*/
		var num=9788;
		document.getElementById('demo6').innerHTML=isNaN(num);
		
		
	}