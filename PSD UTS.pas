program bagasprastomo105;
uses crt;
var

menu : record //ini record sama stringnya tu disini ygy jgn lupa diapus ini ygy
        makanan : array[1..99]of string;
        jumlah,banyak : array[1..99]of longint;
        harga : array[1..99] of longint;
end;

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
                readln(menu.makanan[i]);
                write('Banyaknya        : ');
                readln(menu.banyak[i]);
                write('Harga            : ');
                readln(menu.harga[i]);
                menu.jumlah[i]:=menu.banyak[i]*menu.harga[i];
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
                        writeln(i,'    ',menu.makanan[i],'                        ',menu.banyak[i],'        ',menu.harga[i],'        ',menu.jumlah[i])
                end;
                for i := 1 to a do
                begin
                        total:=total+menu.jumlah[i];
                end;
                writeln('');
                writeln('==============================================================');
                writeln('');
                writeln('Total          : ',total);
                write('Pembayaran     : ');
                readln(bayar);
                if (bayar<total) then
                begin
                        writeln('INVALID (Uang pembayaran kurang!)');
                end
                else
                begin
                        kembalian:=bayar-total;
                        writeln('Kembalian      : ',kembalian);
                        writeln('');
                end;
        end
        else if (jawab='N') or (jawab='n') then
        begin
                writeln('==============================================================');
                writeln('');
                writeln('                       TERIMA KASIH');
                writeln('');
                readln;
        end;
        writeln('==============================================================');
                writeln('');
                writeln('                       TERIMA KASIH');
                writeln('');
                readln;
end.
