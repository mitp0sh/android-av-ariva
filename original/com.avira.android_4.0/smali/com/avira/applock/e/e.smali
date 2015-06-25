.class final enum Lcom/avira/applock/e/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/applock/e/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/applock/e/e;

.field public static final enum RESULT_ERROR_PASS_TOO_LONG:Lcom/avira/applock/e/e;

.field public static final enum RESULT_ERROR_PASS_TOO_SHORT:Lcom/avira/applock/e/e;

.field public static final enum RESULT_OK:Lcom/avira/applock/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/avira/applock/e/e;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/e/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/e/e;->RESULT_OK:Lcom/avira/applock/e/e;

    new-instance v0, Lcom/avira/applock/e/e;

    const-string v1, "RESULT_ERROR_PASS_TOO_SHORT"

    invoke-direct {v0, v1, v3}, Lcom/avira/applock/e/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/e/e;->RESULT_ERROR_PASS_TOO_SHORT:Lcom/avira/applock/e/e;

    new-instance v0, Lcom/avira/applock/e/e;

    const-string v1, "RESULT_ERROR_PASS_TOO_LONG"

    invoke-direct {v0, v1, v4}, Lcom/avira/applock/e/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/e/e;->RESULT_ERROR_PASS_TOO_LONG:Lcom/avira/applock/e/e;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/applock/e/e;

    sget-object v1, Lcom/avira/applock/e/e;->RESULT_OK:Lcom/avira/applock/e/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/applock/e/e;->RESULT_ERROR_PASS_TOO_SHORT:Lcom/avira/applock/e/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/applock/e/e;->RESULT_ERROR_PASS_TOO_LONG:Lcom/avira/applock/e/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/applock/e/e;->$VALUES:[Lcom/avira/applock/e/e;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/applock/e/e;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/avira/applock/e/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/e/e;

    return-object v0
.end method

.method public static values()[Lcom/avira/applock/e/e;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/avira/applock/e/e;->$VALUES:[Lcom/avira/applock/e/e;

    invoke-virtual {v0}, [Lcom/avira/applock/e/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/applock/e/e;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    sget-object v0, Lcom/avira/applock/e/d;->$SwitchMap$com$avira$applock$presenters$CreatePasswordActivityPresenter$CreatePassValidationResult:[I

    invoke-virtual {p0}, Lcom/avira/applock/e/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const-string v0, ""

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget v0, Lcom/avira/applock/f;->setup_recovery_pass_screen_min_pass_length:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_1
    sget v0, Lcom/avira/applock/f;->setup_recovery_pass_screen_max_pass_length:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
