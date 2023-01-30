
dirAll = getDirectory("Choose a Directory ALL");
listAll = getFileList(dirAll);
n1 = lengthOf(listAll);

dirC1 = getDirectory("Choose a Directory C1");
listC1 = getFileList(dirC1);


dirC2 = getDirectory("Choose a Directory RED");
listC2 = getFileList(dirC2);



//-----------------------------

saveImagesInFolders();


//---------------------------------

function saveImagesInFolders(){

setBatchMode(true);
    for (i=0; i<n1; i++) {

	pathAll = dirAll+listAll[i];
	open(pathAll);

	//split channels and close C2
	selectedFile = getTitle();
//	makeRectangle(12, 12, 1740, 1740);
 //   run("Crop");
	run("Split Channels");
	channel1 = "C1"+"-"+selectedFile;
	channel2 = "C2"+"-"+selectedFile;
	selectImage(channel1);	
	saveAs("Tiff", dirC1 + "C1-" + listAll [i]);
	close();
	
	selectImage(channel2);
	saveAs("Tiff", dirC2 + "C2-" + listAll [i]);	
	close;


}
}
