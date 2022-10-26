unit UAluno;

interface

type
  TDiciplina = class

    private
      FCodigo : integer;
      FDescricao : string;
      function getCodigo: integer;
      function getDescricao: string;
      procedure setCodigo(const Value: integer);
      procedure setDescricao(const Value: string);


    public

      property codigo: integer read getCodigo write setCodigo;
      property descricao : string read getDescricao write setDescricao;

  end;

    TAluno = class(TDiciplina)
      private
        FNome : String;
        FMatricula : integer;
        FNota1 : double;
        FNota2 : double;
        FProva : double;
        FTrabalho : double;
        FMedia : double;

        function getMatricula: integer;
        function getNome: string;
        function getNota1: double;
        function getProva: double;
        function getTrabalho: double;
        procedure setMatricula(const Value: integer);
        procedure setNome(const Value: string);
        procedure setNota1(const Value: double);
        procedure setNota2(const Value: double);
        procedure setProva(const Value: double);
        procedure setTrabalho(const Value: double);
        function getMedia: double;
        procedure setMedia(const Value: double);

      public

        property nome : string read getNome write setNome;
        property matricula : integer read getMatricula write setMatricula;
        property nota1 : double read getNota1 write setNota1;
        property nota2 : double read getNota1 write setNota2;
        property prova : double read getProva write setProva;
        property trabalho : double read getTrabalho write setTrabalho;
        property media : double read getMedia write setMedia;


        procedure mediaFinal( aNota1, aNota2, aTrabalho : double );
        procedure provaFinal ( aProvaFinal: double);

   end;

implementation

{ TAluno }






function TAluno.getMatricula: integer;
begin
  Result := FMatricula;
end;

function TAluno.getMedia: double;
begin
  Result := FMedia;
end;

function TAluno.getNome: string;
begin
  Result := FNome;
end;

function TAluno.getNota1: double;
begin
  Result := FNota1;
end;

function TAluno.getProva: double;
begin
  Result := FProva;
end;

function TAluno.getTrabalho: double;
begin
  Result := FTrabalho;
end;

procedure TAluno.mediaFinal(aNota1, aNota2, aTrabalho: double);

begin
  FNota1 := aNota1;
  FNota2 := aNota2;
  FTrabalho := aTrabalho;

end;

procedure TAluno.provaFinal(aProvaFinal: double);
begin

end;



procedure TAluno.setMatricula(const Value: integer);
begin

end;

procedure TAluno.setMedia(const Value: double);
begin

end;

procedure TAluno.setNome(const Value: string);
begin

end;

procedure TAluno.setNota1(const Value: double);
begin

end;

procedure TAluno.setNota2(const Value: double);
begin

end;

procedure TAluno.setProva(const Value: double);
begin

end;

procedure TAluno.setTrabalho(const Value: double);
begin

end;

{ TDiciplina }

function TDiciplina.getCodigo: integer;
begin
  Result := FCodigo;
end;

function TDiciplina.getDescricao: string;
begin
  Result := FDescricao;
end;

procedure TDiciplina.setCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TDiciplina.setDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
