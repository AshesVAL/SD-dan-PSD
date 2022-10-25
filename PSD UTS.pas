program bagasprastomo105;
uses math, crt;

var
makanan : array[1..99]of string;
jumlah,banyak : array[1..99]of integer;
harga : array[1..99] of longint;
pelanggan : string;
jawab : char;
i,a,kembalian,bayar,total : longint;

begin
        clrscr;
        write('Nama Pembeli            : ');
        readln(pelanggan);
        write('Masukkan Jumlah Pesanan : ');
        readln(a);
        writeln('');

        for i:=1 to a do
        begin
                writeln('Masukan data ke ',i);
                write('Nama Makanan     : ');
                readln(makanan[i]);
                write('Banyaknya        : ');
                readln(banyak[i]);
                write('Harga            : ');
                readln(harga[i]);
                jumlah[i]:=banyak[i]*harga[i];
                writeln('');
        end;
        write('Cetak Struk?(Y/N) : ');
        readln(jawab);
        writeln('');
        if (jawab='Y') or (jawab='y') then
        begin
                writeln('                        Warung Makan 89');
                writeln('              Jl Siliwangi 1, Nomor 113, Bandung');
                writeln('==============================================================');
                writeln('');
                writeln('Nama Pembeli : ', pelanggan);
                writeln('');
                writeln('No   Nama Makanan              Banyak   Harga     Jumlah');
                for i := 1 to a do
                begin
                        writeln(i,'    ',makanan[i],'                   ',banyak[i],'    ',harga[i],'    ',jumlah[i])
                end;
                for i := 1 to a do
                begin
                        total:=total+jumlah[i];
                end;
                writeln('');
                writeln('==============================================================');
                writeln('');
                writeln('Total          : ',total);
                write('Pembayaran     : ');
                readln(bayar);
                if (bayar<total) then
                begin
                        writeln('Ente kadang kadang ente');
                end
                else
                begin
                        kembalian:=bayar-total;
                        writeln('Kembalian      : ',kembalian);
                        writeln('');
                        writeln('==============================================================');
                        writeln('');
                        writeln('                       TERIMA KASIH');
                end;
        end
        else if (jawab='N') or (jawab='n') then
        begin
                writeln('');
                writeln('Terima Kasih!');
        end;
end.
