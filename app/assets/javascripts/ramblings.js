
// Comment Function
function Comments(ID) {
	window.open('/comments?id=' + ID, 'comments', 'width=350,height=400,scrollbars=yes,status=yes');
}

// Admin Functions
function NewEntry () {
	window.open('newentry.cfm', 'entryform', 'width=600,height=430,scrollbars=yes,status=yes');
}

function EditEntry (ID) {
	window.open('editentry.cfm?rID=' + ID, 'entryform', 'width=600,height=430,scrollbars=yes,status=yes');
}

function ConfirmDel(delID) {
	if(confirm("Are you sure you want to delete this entry?")) {
		location.href = 'index.cfm?admin526=1&delID=' + delID;
	}
}

function PicView(ID) {
	window.open('/pictures/view?p=' + ID, 'viewer', 'width=800,height=680,scrollbars=yes,status=yes');
}

function SlideShow(piclist) {
	window.open('/pictures/view?p=' + piclist + '&pos=0', 'viewer', 'width=800,height=680,scrollbars=yes,status=yes');
}
