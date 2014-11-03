
// Comment Function
function Comments(ID) {
	window.open('comments.cfm?rID=' + ID, 'comments', 'width=350,height=400,scrollbars=yes,status=yes');
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
	window.open('pic-view.cfm?pID=' + ID, 'viewer', 'width=800,height=600,scrollbars=yes,status=yes');
}

function SlideShow(piclist) {
	window.open('pic-view.cfm?ss=' + piclist + '&pos=1', 'viewer', 'width=800,height=600,scrollbars=yes,status=yes');
}
