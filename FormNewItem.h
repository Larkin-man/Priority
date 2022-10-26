//---------------------------------------------------------------------------

#ifndef FormNewItemH
#define FormNewItemH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TNewItem : public TForm
{
__published:	// IDE-managed Components
	TEdit *Name;
	TBitBtn *BitBtn1;
	TBitBtn *BitBtn2;
private:	// User declarations
public:		// User declarations
	__fastcall TNewItem(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNewItem *NewItem;
//---------------------------------------------------------------------------
#endif
