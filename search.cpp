#include <iostream>
#include <fstream>

using namespace std;

int search(string fileName)
{
	ifstream myFile;
	myFile.open(fileName);
	if(myFile.is_open())
	{
		string line;
		int emailCount = 0;
		int phoneCount = 0;
		while(getline(myFile, line))
		{
			cout << line << endl;
		}
		myFile.close();

	}
	else
	{
		cout << "Error: Cannot open File" << endl;
	}
	return 0;
}

int main()
{
	
	
}