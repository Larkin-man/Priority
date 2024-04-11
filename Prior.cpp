//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Prior.h"
//#include "FormNewItem.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------

__fastcall TForm1::TForm1(TComponent* Owner)	: TForm(Owner)
{
	A = U = S = 0;
	CurrS = -1;
	Search->ItemIndex = 0;
	CheckMassAdd = true;
	OpenDialog1->InitialDir = GetCurrentDir();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::NewPosClick(TObject *Sender)
{
	if (CheckMassAdd)
		if (Name->Text.Pos(',') > 0)
			return MassAdd('P');
	A++;
	std::vector<int> s(S);
	AS.push_back(s);
	AList->InsertRow(Name->Text,0,true);//А "+IntToStr(A),0,true);
	Search->Items->Add(Name->Text);//"А "+IntToStr(A));
	IncreaseName();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::NewSClick(TObject *Sender)
{
	if (CheckMassAdd)
		if (Name->Text.Pos(',') > 0)
			return MassAdd('S');
	S++;
	std::vector< std::vector<bool> >::iterator iUS; // итератор для второго измерения.
	//std::vector<int>::iterator iU; // итератор для первого измерения
	for (iUS = US.begin(); iUS != US.end(); ++iUS)
		iUS->push_back(false);

	std::vector< std::vector<int> >::iterator iAS; // итератор для второго измерения.
	//std::vector<int>::iterator iU; // итератор для первого измерения
	for (iAS = AS.begin(); iAS != AS.end(); ++iAS)
		iAS->push_back(0);
	//UA.push_back(a);
	//Out->Lines->Add(UA.size());
	//Out->Lines->Add(UA[0].size());

	SList->Items->Add(Name->Text);//"Свойство "+IntToStr(S));
	//NewItem.*ShowModal();
	IncreaseName();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::NewAClick(TObject *Sender)
{
	if (CheckMassAdd)
		if (Name->Text.Pos(',') > 0)
			return MassAdd('A');
	U++;
	std::vector<bool> s(S);
	US.push_back(s);
	TUnit Un;
	Un.Name = Name->Text;//"Юнит "+IntToStr(U);
	Un.Pos = U-1;
	Uses.push_back(Un);
	UList->Items->Add(Un.Name);
	UList->ItemIndex = U-1;
	UListSelect(Sender);
	Search->ItemIndex = 0;
	IncreaseName();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ShowClick(TObject *Sender)
{
	/*//Out->Lines->Add("SHow");
	for (int i = 0; i < A; ++i)
		for (int j = 0; j < S; ++j)
			Out->Lines->Add(AS[i][j]); */
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UListSelect(TObject *Sender)
{
	//SList->ClearSelection();
	for (int i = 0; i < U; ++i)
		if (Uses[i].Pos == UList->ItemIndex)
		{
			CurrU = i;
			break;
		}
	//Out->Lines->Add(Uses[CurrU].Name) ;
	for (int i = 0; i < S; ++i)
		SList->Checked[i] = US[CurrU][i];
	//AList->Strings->l
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SListClickCheck(TObject *Sender)
{
	if (UList->ItemIndex < 0)
		return;
	//Out->Lines->Add("frf");
	for (int i = 0; i < S; ++i)
		US[CurrU][i] = SList->Checked[i];
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SListClick(TObject *Sender)
{
	if (SList->ItemIndex < 0)
		return;
	else
		CurrS = SList->ItemIndex;
	if (CurrS == -1)
		return;
	//Out->Lines->Add("dd");
	for (int i = 0; i < A; ++i)
		AList->Cells[1][i+1] = AS[i][CurrS];
		//Out->Lines->Add(AS[i][CurrS]);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::AListValidate(TObject *Sender, int ACol, int ARow, const UnicodeString KeyName,
			 const UnicodeString KeyValue)
{
	if (SList->ItemIndex < 0)
		return;
	int p = StrToInt(KeyValue);
	AS[ARow-1][SList->ItemIndex] = p;
	//Out->Lines->Add(AS[ARow-1][SList->ItemIndex]) ;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SearchChange(TObject *Sender)
{
	if (Search->ItemIndex < 0)
		return;
	else if (Search->ItemIndex == 0)
	{
		UList->Clear();
		for (int i = 0; i < U; ++i)
		{
			UList->Items->Add(Uses[i].Name);
			Uses[i].Pos = i;
		}
		UList->ItemIndex = CurrU;
		return;
	}
	int Alt = Search->ItemIndex - 1;
	int p = 0;
	//std::vector<int> Sort;
	for (int u = 0; u < U; ++u)
	{
		p = 0;
		for (int s = 0; s < S; ++s)
			if (US[u][s])
				p += AS[Alt][s];
		//Sort.push_back(p);
		Uses[u].Result = p;
		Uses[u].Pos = -1;
		//Out->Lines->Add(p);
	}
	UList->Clear();
	int Sel = 0;
	for (int n = 0; n < U; ++n)
	{
		int Umax = 0;
		int max = -99999;
		for (int i = 0; i < U; ++i)
		{
			if ((Uses[i].Result > max)&&(Uses[i].Pos == -1))
			{
				Umax = i;
				max = Uses[i].Result;
			}
		}
		Uses[Umax].Pos = UList->Items->Count;
		UList->Items->Add(Uses[Umax].Name+"["+IntToStr(Uses[Umax].Result)+"]");
		if (Umax == CurrU)
			Sel = n;
	}
	UList->ItemIndex = Sel;
	//Uses[i].Pos == UList->ItemIndex
}
//---------------------------------------------------------------------------

void TForm1::MassAdd(char Type)
{
	CheckMassAdd = false;
	UnicodeString Names = Name->Text;
	int p = 0;
	while ((p = Names.Pos(',')) > 0)
	{
		Name->Text = Names.SubString(1,p-1);
		Names.Delete(1,p);
		if (Type == 'P') NewPosClick(NULL);
		else if (Type == 'S') NewSClick(NULL);
		else if (Type == 'A') NewAClick(NULL);
	}
	Name->Text = Names;
	if (Type == 'P') NewPosClick(NULL);
	else if (Type == 'S') NewSClick(NULL);
	else if (Type == 'A') NewAClick(NULL);
	Name->Text = "Название";
	CheckMassAdd = true;
}
//---------------------------------------------------------------------------
//Загрузить из файла
void __fastcall TForm1::NLoadClick(TObject *Sender)
{
	if (OpenDialog1->Execute() == ID_OK)
	{
		TStringList *file;
		file = new TStringList;
		file->LoadFromFile(OpenDialog1->FileName);
		CheckMassAdd = false;
		if (ContextPopupType == 'P')
		{
			for (int i = 0; i < file->Count; ++i)
			{
				Name->Text = file->Names[i];
				NewPosClick(NULL);
			}
		} else if (ContextPopupType == 'S')
		{
			for (int i = 0; i < file->Count; ++i)
			{
				Name->Text = file->Strings[i]; //SList->Items->Add(file->Strings[i]);
				NewSClick(NULL);
			}
		} else if (ContextPopupType == 'A')
		{
			for (int i = 0; i < file->Count; ++i)
			{
				Name->Text = file->Strings[i]; //SList->Items->Add(file->Strings[i]);
				NewAClick(NULL);
			}
		}
		/*if (ContextPopupType == 'P')
			file->->LoadFromFile(OpenDialog1->FileName);
		else if (ContextPopupType == 'S')
			SList->Items->LoadFromFile(OpenDialog1->FileName);
		else if (ContextPopupType == 'A')
			UList->Items->LoadFromFile(OpenDialog1->FileName); */
		CheckMassAdd = true;
		delete file;
		Name->Text = "Название";
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::AListContextPopup(TObject *Sender, TPoint &MousePos, bool &Handled)
{
	ContextPopupType = 'P';
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SListContextPopup(TObject *Sender, TPoint &MousePos, bool &Handled)
{
	ContextPopupType = 'S';
}
//---------------------------------------------------------------------------

void __fastcall TForm1::UListContextPopup(TObject *Sender, TPoint &MousePos, bool &Handled)
{
	ContextPopupType = 'A';
}
//---------------------------------------------------------------------------

void TForm1::IncreaseName()
{
	if (CheckMassAdd == false)
		return;
	String str = Name->Text;
	int i;
	for (i = str.Length(); i > 0; i--)
	if (str[i] < L'0' || str[i] > L'9')
		break;
	if (str.Length() > i)
	{
	int num = str.SubString(i+1, str.Length()-i).ToIntDef(0);
		num++;
		Name->Text = str.SubString(1, i)+IntToStr(num);
	}
	else
	Name->Text = Name->Text + " 2";
}
//---------------------------------------------------------------------------
