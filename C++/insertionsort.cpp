#include<iostream>
using namespace std;
int  insertionsort( int arr[ ], int n)
{
 int i,temp,j;
 int comp=0;

 for( i=1; i<n ; i++ )
{
  temp=arr[i];
  j = i - 1;

   while( j>=0 && temp<arr[j])
  {
    int t1 = arr[j+1];
    int t2 = arr[j];
    arr[j+1] = arr[j];
    j = j-1 ;
    comp++;
    cout<<t1<<"&"<<t2<<"->"<<arr[j]<<"&"<<t2<<"\n";
//   for( int i=0; i<n; i++ ) {
//     cout<<arr[i]<<"  ";
//   }
//   cout<<endl;
  }
  arr[j+1]=temp;
  if(temp>arr[j])
  {
    comp++;
    cout<<temp<<"&"<<arr[j]<<"\n";
    // for( int i=0; i<n; i++ ) {
    //     cout<<arr[i]<<"  ";
    // }
    // cout<<endl;
  }
}
  return comp;
}
void display(  int arr[ ], int n, int comp )
{
  cout<<" Elements of array after sorting "<<endl;
  for( int i=0; i<n; i++ )
  {
     cout<<arr[i]<<"  ";
  }
  cout<<endl;
  cout<<" Number of comparisions "<<comp<<endl;

 }
int main()
{
   int size;
   int comp = 0;
   cout << " Enter the size of an array " << endl;
   cin >> size;
   int arr[size];
   int n= sizeof(arr) / sizeof(arr[0]);
   cout<<" Enter the elements of array "<<endl;
   for( int i=0; i<size; i++ )
   {
      cin>>arr[i];
   }
   cout<<" Elements of array before sorting "<<endl;
   for( int i=0; i<size; i++ )
   {
        cout<<arr[i]<<"  ";
   }
   cout<<endl;
   int compairson = insertionsort( arr, n);
   display(  arr, n, compairson);
   return 0;
 }
