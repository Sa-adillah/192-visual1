unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cbxFotoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgJenisKelaminClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  Memo1.lines.Add(Edit1.text);

  if(rgJenisKelamin.itemIndex=0) then
  begin
  memo1.lines.add('Laki-laki');
  end
  else if(rgJenisKelamin.itemIndex=1) then
  begin
   memo1.lines.add('Perempuan');
  end;

  memo1.lines.add(cbKota.text);

  if(cbxFoto.Checked) then
   memo1.Lines.add('Foto ada');

  if(cbxKTP.Checked) then
   memo1.Lines.add('KTP ada');

  if(cbxIjazah.Checked) then
   memo1.Lines.add('Ijazah ada');
end;

procedure TForm1.cbxFotoChange(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin
   //btnReset.Click;
   btnResetClick(Sender);
end;

procedure TForm1.rgJenisKelaminClick(Sender: TObject);
begin

end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Edit1.text:='';
  Memo1.clear;
  rgJenisKelamin.ItemIndex:=-1;
  cbKota.itemindex:=-1;
  cbKota.Text:='';
  cbxFoto.Checked:=false;
  cbxKTP.Checked:=false;
  cbxIjazah.Checked:=false;
end;

end.

