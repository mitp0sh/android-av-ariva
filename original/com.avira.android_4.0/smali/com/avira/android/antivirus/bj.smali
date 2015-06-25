.class final enum Lcom/avira/android/antivirus/bj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antivirus/bj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antivirus/bj;

.field public static final enum ADSPY:Lcom/avira/android/antivirus/bj;

.field public static final enum ADWARE:Lcom/avira/android/antivirus/bj;

.field public static final enum ANDROID_MALWARE:Lcom/avira/android/antivirus/bj;

.field public static final enum APPL:Lcom/avira/android/antivirus/bj;

.field public static final enum BDS:Lcom/avira/android/antivirus/bj;

.field public static final enum DIAL:Lcom/avira/android/antivirus/bj;

.field public static final enum DR:Lcom/avira/android/antivirus/bj;

.field public static final enum EICAR:Lcom/avira/android/antivirus/bj;

.field public static final enum EXP:Lcom/avira/android/antivirus/bj;

.field public static final enum HTML:Lcom/avira/android/antivirus/bj;

.field public static final enum JAVA:Lcom/avira/android/antivirus/bj;

.field public static final enum JS:Lcom/avira/android/antivirus/bj;

.field public static final enum LINUX:Lcom/avira/android/antivirus/bj;

.field public static final enum MACOS:Lcom/avira/android/antivirus/bj;

.field public static final enum NV:Lcom/avira/android/antivirus/bj;

.field public static final enum PDF:Lcom/avira/android/antivirus/bj;

.field public static final enum PFS:Lcom/avira/android/antivirus/bj;

.field public static final enum PHISH:Lcom/avira/android/antivirus/bj;

.field public static final enum PUA:Lcom/avira/android/antivirus/bj;

.field public static final enum RKIT:Lcom/avira/android/antivirus/bj;

.field public static final enum SPR:Lcom/avira/android/antivirus/bj;

.field public static final enum SPYWARE:Lcom/avira/android/antivirus/bj;

.field public static final enum SWF:Lcom/avira/android/antivirus/bj;

.field public static final enum TR:Lcom/avira/android/antivirus/bj;

.field public static final enum VBS:Lcom/avira/android/antivirus/bj;

.field public static final enum W32:Lcom/avira/android/antivirus/bj;

.field public static final enum W64:Lcom/avira/android/antivirus/bj;

.field public static final enum W97M:Lcom/avira/android/antivirus/bj;

.field public static final enum WORM:Lcom/avira/android/antivirus/bj;

.field public static final enum X97M:Lcom/avira/android/antivirus/bj;


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

    .line 244
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "EICAR"

    const v2, 0x7f0802a6

    const-string v3, "EICAR-TEST-SIGNATURE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->EICAR:Lcom/avira/android/antivirus/bj;

    .line 245
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "ANDROID_MALWARE"

    const v2, 0x7f0802a4

    const-string v3, "ANDROID"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->ANDROID_MALWARE:Lcom/avira/android/antivirus/bj;

    .line 246
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "ADWARE"

    const v2, 0x7f0800d0

    const-string v3, "ADWARE"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->ADWARE:Lcom/avira/android/antivirus/bj;

    .line 247
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "NV"

    const v2, 0x7f0802a7

    const-string v3, "NV"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->NV:Lcom/avira/android/antivirus/bj;

    .line 248
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "ADSPY"

    const v2, 0x7f0802a8

    const-string v3, "ADSPY"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->ADSPY:Lcom/avira/android/antivirus/bj;

    .line 249
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "SPR"

    const/4 v2, 0x5

    const v3, 0x7f0800ce

    const-string v4, "SPR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->SPR:Lcom/avira/android/antivirus/bj;

    .line 250
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "PFS"

    const/4 v2, 0x6

    const v3, 0x7f0800cd

    const-string v4, "PFS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->PFS:Lcom/avira/android/antivirus/bj;

    .line 251
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "APPL"

    const/4 v2, 0x7

    const v3, 0x7f0800cf

    const-string v4, "APPL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->APPL:Lcom/avira/android/antivirus/bj;

    .line 252
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "EXP"

    const/16 v2, 0x8

    const v3, 0x7f0802ac

    const-string v4, "EXP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->EXP:Lcom/avira/android/antivirus/bj;

    .line 253
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "JAVA"

    const/16 v2, 0x9

    const v3, 0x7f0802ad

    const-string v4, "JAVA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->JAVA:Lcom/avira/android/antivirus/bj;

    .line 254
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "JS"

    const/16 v2, 0xa

    const v3, 0x7f0802ae

    const-string v4, "JS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->JS:Lcom/avira/android/antivirus/bj;

    .line 255
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "HTML"

    const/16 v2, 0xb

    const v3, 0x7f0802af

    const-string v4, "HTML"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->HTML:Lcom/avira/android/antivirus/bj;

    .line 256
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "PHISH"

    const/16 v2, 0xc

    const v3, 0x7f0802b0

    const-string v4, "PHISH"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->PHISH:Lcom/avira/android/antivirus/bj;

    .line 257
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "SWF"

    const/16 v2, 0xd

    const v3, 0x7f0802b1

    const-string v4, "SWF"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->SWF:Lcom/avira/android/antivirus/bj;

    .line 258
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "BDS"

    const/16 v2, 0xe

    const v3, 0x7f0802b2

    const-string v4, "BDS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->BDS:Lcom/avira/android/antivirus/bj;

    .line 259
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "DIAL"

    const/16 v2, 0xf

    const v3, 0x7f0802b3

    const-string v4, "DIAL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->DIAL:Lcom/avira/android/antivirus/bj;

    .line 260
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "LINUX"

    const/16 v2, 0x10

    const v3, 0x7f0802b4

    const-string v4, "LINUX"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->LINUX:Lcom/avira/android/antivirus/bj;

    .line 261
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "MACOS"

    const/16 v2, 0x11

    const v3, 0x7f0802b5

    const-string v4, "MACOS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->MACOS:Lcom/avira/android/antivirus/bj;

    .line 262
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "RKIT"

    const/16 v2, 0x12

    const v3, 0x7f0802b8

    const-string v4, "RKIT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->RKIT:Lcom/avira/android/antivirus/bj;

    .line 263
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "PUA"

    const/16 v2, 0x13

    const v3, 0x7f0802b7

    const-string v4, "PUA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->PUA:Lcom/avira/android/antivirus/bj;

    .line 264
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "PDF"

    const/16 v2, 0x14

    const v3, 0x7f0802b6

    const-string v4, "PDF"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->PDF:Lcom/avira/android/antivirus/bj;

    .line 265
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "DR"

    const/16 v2, 0x15

    const v3, 0x7f0802b9

    const-string v4, "DR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->DR:Lcom/avira/android/antivirus/bj;

    .line 266
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "TR"

    const/16 v2, 0x16

    const v3, 0x7f0802ba

    const-string v4, "TR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->TR:Lcom/avira/android/antivirus/bj;

    .line 267
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "VBS"

    const/16 v2, 0x17

    const v3, 0x7f0802bb

    const-string v4, "VBS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->VBS:Lcom/avira/android/antivirus/bj;

    .line 268
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "W32"

    const/16 v2, 0x18

    const v3, 0x7f0802bc

    const-string v4, "W32"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->W32:Lcom/avira/android/antivirus/bj;

    .line 269
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "W64"

    const/16 v2, 0x19

    const v3, 0x7f0802bd

    const-string v4, "W64"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->W64:Lcom/avira/android/antivirus/bj;

    .line 270
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "W97M"

    const/16 v2, 0x1a

    const v3, 0x7f0802be

    const-string v4, "W97M"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->W97M:Lcom/avira/android/antivirus/bj;

    .line 271
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "WORM"

    const/16 v2, 0x1b

    const v3, 0x7f0802bf

    const-string v4, "WORM"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->WORM:Lcom/avira/android/antivirus/bj;

    .line 272
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "X97M"

    const/16 v2, 0x1c

    const v3, 0x7f0802c0

    const-string v4, "X97M"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->X97M:Lcom/avira/android/antivirus/bj;

    .line 273
    new-instance v0, Lcom/avira/android/antivirus/bj;

    const-string v1, "SPYWARE"

    const/16 v2, 0x1d

    const v3, 0x7f0802c1

    const-string v4, "SPYWARE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/antivirus/bj;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/antivirus/bj;->SPYWARE:Lcom/avira/android/antivirus/bj;

    .line 241
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/avira/android/antivirus/bj;

    sget-object v1, Lcom/avira/android/antivirus/bj;->EICAR:Lcom/avira/android/antivirus/bj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/antivirus/bj;->ANDROID_MALWARE:Lcom/avira/android/antivirus/bj;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/antivirus/bj;->ADWARE:Lcom/avira/android/antivirus/bj;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avira/android/antivirus/bj;->NV:Lcom/avira/android/antivirus/bj;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avira/android/antivirus/bj;->ADSPY:Lcom/avira/android/antivirus/bj;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/antivirus/bj;->SPR:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/antivirus/bj;->PFS:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/antivirus/bj;->APPL:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avira/android/antivirus/bj;->EXP:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avira/android/antivirus/bj;->JAVA:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avira/android/antivirus/bj;->JS:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avira/android/antivirus/bj;->HTML:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avira/android/antivirus/bj;->PHISH:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avira/android/antivirus/bj;->SWF:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/avira/android/antivirus/bj;->BDS:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/avira/android/antivirus/bj;->DIAL:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/avira/android/antivirus/bj;->LINUX:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/avira/android/antivirus/bj;->MACOS:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/avira/android/antivirus/bj;->RKIT:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/avira/android/antivirus/bj;->PUA:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/avira/android/antivirus/bj;->PDF:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/avira/android/antivirus/bj;->DR:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/avira/android/antivirus/bj;->TR:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/avira/android/antivirus/bj;->VBS:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/avira/android/antivirus/bj;->W32:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/avira/android/antivirus/bj;->W64:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/avira/android/antivirus/bj;->W97M:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/avira/android/antivirus/bj;->WORM:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/avira/android/antivirus/bj;->X97M:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/avira/android/antivirus/bj;->SPYWARE:Lcom/avira/android/antivirus/bj;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/antivirus/bj;->$VALUES:[Lcom/avira/android/antivirus/bj;

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
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 289
    iput p3, p0, Lcom/avira/android/antivirus/bj;->a:I

    .line 290
    iput-object p4, p0, Lcom/avira/android/antivirus/bj;->b:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antivirus/bj;
    .locals 1

    .prologue
    .line 241
    const-class v0, Lcom/avira/android/antivirus/bj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/bj;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antivirus/bj;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/avira/android/antivirus/bj;->$VALUES:[Lcom/avira/android/antivirus/bj;

    invoke-virtual {v0}, [Lcom/avira/android/antivirus/bj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/bj;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/avira/android/antivirus/bj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/avira/android/antivirus/bj;->a:I

    return v0
.end method
