/**
 * 
 */

	function validate()
	{	
		var i;
		var flag=true;
		var fname=document.formvalidation.sname.value;
		document.getElementById('MyImage').src="image/on.png";
		var regex=/^[a-zA-Z]+$/;

		/*Name Validation*/
		var ig = fname.replace(/\s/g,'');
		if (fname=="" || !ig.match(regex))
			{
				alert("Enter Valid Name ");
				document.getElementById("sname").focus();
				return;
			}
		document.getElementById('demo1').innerHTML=fname;

		/*Address Validation*/
		var addr=document.formvalidation.address.value;
		if (addr=="")
			{
			alert("Address should not be empty");
			document.getElementById("address").focus()
			return;
			}
		for (i=0;i<addr.length; i++)
		{
			if (addr[i]=="\'")
				{
				alert("Address should not contain \' single colon ");
				document.getElementById("address").focus();
				return;
				}
		}
		
		/*Mobile Number Validation*/
		var phno=document.formvalidation.mno.value;
		if(isNaN(phno) )
			{
			alert("Enter only number");
			document.formvalidation.mno.focus();
			return;
			}
		else if(phno=="")
			{
			alert("Mobile cannot be empty");
			document.formvalidation.mno.focus();
			return;
			} 

		else if(phno.length!=10)
			{
			alert("Enter 10 digit number");
			document.formvalidation.mno.focus();
			return;
			}
/*		var pno = /^\d{6-9}$/;
		if (phno[0].match(pno))
			{
			alert("Enter valid mobile number ");
			}*/
		
		/*Check box validation*/
		var check1=document.getElementsByName('ch1');
		var count=0;
		
		for(var i=0;i<check1.length;i++)
			{
				if (check1[i].checked==true)
					{
					count=count+1;
					}
			}
		if (count!=0)
			{
				for (var i=0;i<check1.length;i++)
				{
					if(check1[i].checked==false)
					{
						continue;
					}
					
				}
			}
		else if(count==0)
			{
				alert("Select Atleast one option");
				document.formvalidation.mno.focus();
				return;
			}
			
		/*Radio button validation*/
		var rd=document.getElementsByName('gender');
		count=0;
		for (var i=0;i<rd.length;i++)
			{
				if(rd[i].checked==true)
					{	
						count=count+1;
					}
			}

		if (count==1)
			{
			for (var i=0;i<rd.length;i++)
			{
				if(rd[i].checked==true)
				{
					continue;

				}			
			}
			}
		else if (count==0)
			{
				alert("Select Gender");
				return;
			}
		
		/*Dropdown Button*/
		var city=document.getElementById('cities');
		var cit = city.options[city.selectedIndex].text;
		if (cit=="")
			{
			alert("Select City");
			document.formvalidation.cities.focus();
			return;
			}
		document.formvalidation.action="Assign";
		document.formvalidation.submit();
	}