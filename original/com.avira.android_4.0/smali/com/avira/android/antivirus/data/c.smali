.class public final enum Lcom/avira/android/antivirus/data/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antivirus/data/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antivirus/data/c;

.field public static final enum DISABLED:Lcom/avira/android/antivirus/data/c;

.field public static final enum EMPTY:Lcom/avira/android/antivirus/data/c;

.field public static final enum ITEM:Lcom/avira/android/antivirus/data/c;

.field public static final enum SECTION:Lcom/avira/android/antivirus/data/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/avira/android/antivirus/data/c;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/antivirus/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/data/c;->EMPTY:Lcom/avira/android/antivirus/data/c;

    new-instance v0, Lcom/avira/android/antivirus/data/c;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/antivirus/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    new-instance v0, Lcom/avira/android/antivirus/data/c;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/antivirus/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    new-instance v0, Lcom/avira/android/antivirus/data/c;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/antivirus/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/data/c;->DISABLED:Lcom/avira/android/antivirus/data/c;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avira/android/antivirus/data/c;

    sget-object v1, Lcom/avira/android/antivirus/data/c;->EMPTY:Lcom/avira/android/antivirus/data/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/antivirus/data/c;->DISABLED:Lcom/avira/android/antivirus/data/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avira/android/antivirus/data/c;->$VALUES:[Lcom/avira/android/antivirus/data/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/avira/android/antivirus/data/c;->values()[Lcom/avira/android/antivirus/data/c;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antivirus/data/c;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/avira/android/antivirus/data/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/c;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antivirus/data/c;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/avira/android/antivirus/data/c;->$VALUES:[Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v0}, [Lcom/avira/android/antivirus/data/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/data/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/avira/android/antivirus/data/c;->ordinal()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    const v0, 0x7f030084

    .line 31
    invoke-virtual {p0}, Lcom/avira/android/antivirus/data/c;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 42
    const v0, 0x7f030085

    :goto_0
    :pswitch_0
    return v0

    .line 36
    :pswitch_1
    const v0, 0x7f030087

    goto :goto_0

    .line 38
    :pswitch_2
    const v0, 0x7f030089

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
