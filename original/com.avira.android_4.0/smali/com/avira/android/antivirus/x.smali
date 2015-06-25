.class final enum Lcom/avira/android/antivirus/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antivirus/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antivirus/x;

.field public static final enum ADSPY:Lcom/avira/android/antivirus/x;

.field public static final enum ADWARE:Lcom/avira/android/antivirus/x;

.field public static final enum ANDROID_MALWARE:Lcom/avira/android/antivirus/x;

.field public static final enum APPL:Lcom/avira/android/antivirus/x;

.field public static final enum BDS:Lcom/avira/android/antivirus/x;

.field public static final enum DIAL:Lcom/avira/android/antivirus/x;

.field public static final enum DR:Lcom/avira/android/antivirus/x;

.field public static final enum EICAR:Lcom/avira/android/antivirus/x;

.field public static final enum EXP:Lcom/avira/android/antivirus/x;

.field public static final enum HTML:Lcom/avira/android/antivirus/x;

.field public static final enum JAVA:Lcom/avira/android/antivirus/x;

.field public static final enum JS:Lcom/avira/android/antivirus/x;

.field public static final enum LINUX:Lcom/avira/android/antivirus/x;

.field public static final enum MACOS:Lcom/avira/android/antivirus/x;

.field public static final enum NV:Lcom/avira/android/antivirus/x;

.field public static final enum PDF:Lcom/avira/android/antivirus/x;

.field public static final enum PFS:Lcom/avira/android/antivirus/x;

.field public static final enum PHISH:Lcom/avira/android/antivirus/x;

.field public static final enum PUA:Lcom/avira/android/antivirus/x;

.field public static final enum RKIT:Lcom/avira/android/antivirus/x;

.field public static final enum SPR:Lcom/avira/android/antivirus/x;

.field public static final enum SPYWARE:Lcom/avira/android/antivirus/x;

.field public static final enum SWF:Lcom/avira/android/antivirus/x;

.field public static final enum TR:Lcom/avira/android/antivirus/x;

.field public static final enum VBS:Lcom/avira/android/antivirus/x;

.field public static final enum W32:Lcom/avira/android/antivirus/x;

.field public static final enum W64:Lcom/avira/android/antivirus/x;

.field public static final enum W97M:Lcom/avira/android/antivirus/x;

.field public static final enum WORM:Lcom/avira/android/antivirus/x;

.field public static final enum X97M:Lcom/avira/android/antivirus/x;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "EICAR"

    const v2, 0x7f0802a6

    const-string v3, "EICAR-TEST-SIGNATURE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->EICAR:Lcom/avira/android/antivirus/x;

    .line 19
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "ANDROID_MALWARE"

    const v2, 0x7f0802a4

    const-string v3, "ANDROID"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->ANDROID_MALWARE:Lcom/avira/android/antivirus/x;

    .line 20
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "ADWARE"

    const v2, 0x7f0802a5

    const-string v3, "ADWARE"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->ADWARE:Lcom/avira/android/antivirus/x;

    .line 21
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "NV"

    const v2, 0x7f0802a7

    const-string v3, "NV"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->NV:Lcom/avira/android/antivirus/x;

    .line 22
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "ADSPY"

    const v2, 0x7f0802a8

    const-string v3, "ADSPY"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->ADSPY:Lcom/avira/android/antivirus/x;

    .line 23
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "SPR"

    const/4 v2, 0x5

    const v3, 0x7f0802a9

    const-string v4, "SPR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->SPR:Lcom/avira/android/antivirus/x;

    .line 24
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "PFS"

    const/4 v2, 0x6

    const v3, 0x7f0802aa

    const-string v4, "PFS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->PFS:Lcom/avira/android/antivirus/x;

    .line 25
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "APPL"

    const/4 v2, 0x7

    const v3, 0x7f0802ab

    const-string v4, "APPL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->APPL:Lcom/avira/android/antivirus/x;

    .line 26
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "EXP"

    const/16 v2, 0x8

    const v3, 0x7f0802ac

    const-string v4, "EXP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->EXP:Lcom/avira/android/antivirus/x;

    .line 27
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "JAVA"

    const/16 v2, 0x9

    const v3, 0x7f0802ad

    const-string v4, "JAVA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->JAVA:Lcom/avira/android/antivirus/x;

    .line 28
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "JS"

    const/16 v2, 0xa

    const v3, 0x7f0802ae

    const-string v4, "JS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->JS:Lcom/avira/android/antivirus/x;

    .line 29
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "HTML"

    const/16 v2, 0xb

    const v3, 0x7f0802af

    const-string v4, "HTML"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->HTML:Lcom/avira/android/antivirus/x;

    .line 30
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "PHISH"

    const/16 v2, 0xc

    const v3, 0x7f0802b0

    const-string v4, "PHISH"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->PHISH:Lcom/avira/android/antivirus/x;

    .line 31
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "SWF"

    const/16 v2, 0xd

    const v3, 0x7f0802b1

    const-string v4, "SWF"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->SWF:Lcom/avira/android/antivirus/x;

    .line 32
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "BDS"

    const/16 v2, 0xe

    const v3, 0x7f0802b2

    const-string v4, "BDS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->BDS:Lcom/avira/android/antivirus/x;

    .line 33
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "DIAL"

    const/16 v2, 0xf

    const v3, 0x7f0802b3

    const-string v4, "DIAL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->DIAL:Lcom/avira/android/antivirus/x;

    .line 34
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "LINUX"

    const/16 v2, 0x10

    const v3, 0x7f0802b4

    const-string v4, "LINUX"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->LINUX:Lcom/avira/android/antivirus/x;

    .line 35
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "MACOS"

    const/16 v2, 0x11

    const v3, 0x7f0802b5

    const-string v4, "MACOS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->MACOS:Lcom/avira/android/antivirus/x;

    .line 36
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "RKIT"

    const/16 v2, 0x12

    const v3, 0x7f0802b8

    const-string v4, "RKIT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->RKIT:Lcom/avira/android/antivirus/x;

    .line 37
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "PUA"

    const/16 v2, 0x13

    const v3, 0x7f0802b7

    const-string v4, "PUA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->PUA:Lcom/avira/android/antivirus/x;

    .line 38
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "PDF"

    const/16 v2, 0x14

    const v3, 0x7f0802b6

    const-string v4, "PDF"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->PDF:Lcom/avira/android/antivirus/x;

    .line 39
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "DR"

    const/16 v2, 0x15

    const v3, 0x7f0802b9

    const-string v4, "DR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->DR:Lcom/avira/android/antivirus/x;

    .line 40
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "TR"

    const/16 v2, 0x16

    const v3, 0x7f0802ba

    const-string v4, "TR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->TR:Lcom/avira/android/antivirus/x;

    .line 41
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "VBS"

    const/16 v2, 0x17

    const v3, 0x7f0802bb

    const-string v4, "VBS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->VBS:Lcom/avira/android/antivirus/x;

    .line 42
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "W32"

    const/16 v2, 0x18

    const v3, 0x7f0802bc

    const-string v4, "W32"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->W32:Lcom/avira/android/antivirus/x;

    .line 43
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "W64"

    const/16 v2, 0x19

    const v3, 0x7f0802bd

    const-string v4, "W64"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->W64:Lcom/avira/android/antivirus/x;

    .line 44
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "W97M"

    const/16 v2, 0x1a

    const v3, 0x7f0802be

    const-string v4, "W97M"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->W97M:Lcom/avira/android/antivirus/x;

    .line 45
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "WORM"

    const/16 v2, 0x1b

    const v3, 0x7f0802bf

    const-string v4, "WORM"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->WORM:Lcom/avira/android/antivirus/x;

    .line 46
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "X97M"

    const/16 v2, 0x1c

    const v3, 0x7f0802c0

    const-string v4, "X97M"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->X97M:Lcom/avira/android/antivirus/x;

    .line 47
    new-instance v0, Lcom/avira/android/antivirus/x;

    const-string v1, "SPYWARE"

    const/16 v2, 0x1d

    const v3, 0x7f0802c1

    const-string v4, "SPYWARE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/x;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/x;->SPYWARE:Lcom/avira/android/antivirus/x;

    .line 15
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/avira/android/antivirus/x;

    sget-object v1, Lcom/avira/android/antivirus/x;->EICAR:Lcom/avira/android/antivirus/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/antivirus/x;->ANDROID_MALWARE:Lcom/avira/android/antivirus/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/antivirus/x;->ADWARE:Lcom/avira/android/antivirus/x;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avira/android/antivirus/x;->NV:Lcom/avira/android/antivirus/x;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avira/android/antivirus/x;->ADSPY:Lcom/avira/android/antivirus/x;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/antivirus/x;->SPR:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/antivirus/x;->PFS:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/antivirus/x;->APPL:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avira/android/antivirus/x;->EXP:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avira/android/antivirus/x;->JAVA:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avira/android/antivirus/x;->JS:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avira/android/antivirus/x;->HTML:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avira/android/antivirus/x;->PHISH:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avira/android/antivirus/x;->SWF:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/avira/android/antivirus/x;->BDS:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/avira/android/antivirus/x;->DIAL:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/avira/android/antivirus/x;->LINUX:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/avira/android/antivirus/x;->MACOS:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/avira/android/antivirus/x;->RKIT:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/avira/android/antivirus/x;->PUA:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/avira/android/antivirus/x;->PDF:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/avira/android/antivirus/x;->DR:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/avira/android/antivirus/x;->TR:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/avira/android/antivirus/x;->VBS:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/avira/android/antivirus/x;->W32:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/avira/android/antivirus/x;->W64:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/avira/android/antivirus/x;->W97M:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/avira/android/antivirus/x;->WORM:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/avira/android/antivirus/x;->X97M:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/avira/android/antivirus/x;->SPYWARE:Lcom/avira/android/antivirus/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/antivirus/x;->$VALUES:[Lcom/avira/android/antivirus/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/avira/android/antivirus/x;->a:I

    .line 64
    iput-object p4, p0, Lcom/avira/android/antivirus/x;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antivirus/x;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/avira/android/antivirus/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/x;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antivirus/x;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/avira/android/antivirus/x;->$VALUES:[Lcom/avira/android/antivirus/x;

    invoke-virtual {v0}, [Lcom/avira/android/antivirus/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/x;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avira/android/antivirus/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/avira/android/antivirus/x;->a:I

    return v0
.end method
