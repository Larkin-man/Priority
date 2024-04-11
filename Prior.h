//---------------------------------------------------------------------------

#ifndef PriorH
#define PriorH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <ValEdit.hpp>
#include <CheckLst.hpp>
#include <Dialogs.hpp>
#include <Menus.hpp>
#include <vector>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TButton *NewPos;
	TPanel *Panel2;
	TValueListEditor *AList;
	TButton *NewA;
	TPanel *Panel3;
	TButton *NewS;
	TCheckListBox *SList;
	TComboBox *Search;
	TEdit *Name;
	TListBox *UList;
	TPopupMenu *PopupMenu1;
	TMenuItem *NLoad;
	TOpenDialog *OpenDialog1;
	TSplitter *Splitter1;
	TSplitter *Splitter2;
	void __fastcall NewPosClick(TObject *Sender);
	void __fastcall NewSClick(TObject *Sender);
	void __fastcall NewAClick(TObject *Sender);
	void __fastcall ShowClick(TObject *Sender);
	void __fastcall UListSelect(TObject *Sender);
	void __fastcall SListClickCheck(TObject *Sender);
	void __fastcall SListClick(TObject *Sender);
	void __fastcall AListValidate(TObject *Sender, int ACol, int ARow, const UnicodeString KeyName,
          const UnicodeString KeyValue);
	void __fastcall SearchChange(TObject *Sender);
	void __fastcall NLoadClick(TObject *Sender);
	void __fastcall AListContextPopup(TObject *Sender, TPoint &MousePos, bool &Handled);
	void __fastcall SListContextPopup(TObject *Sender, TPoint &MousePos, bool &Handled);
	void __fastcall UListContextPopup(TObject *Sender, TPoint &MousePos, bool &Handled);

private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
	typedef std::vector<std::vector<int> > Matrix;
	Matrix AS;
	std::vector< std::vector<bool> > US;
	int A,U,S;
	typedef struct
	{
		UnicodeString Name;
		int Pos;
		int Result;
	} TUnit;
	std::vector<TUnit> Uses;
	int CurrU, CurrS;
	bool CheckMassAdd;
	char ContextPopupType;
	void MassAdd(char Type);
   void IncreaseName();
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
