.class public final Lcom/avira/applock/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PIN_LENGTH:I = 0x8

.field public static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private a:Lcom/avira/applock/activities/CreatePinActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/CreatePinActivity;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/applock/e/f;->b:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    .line 64
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/avira/applock/e/h;
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/avira/applock/e/h;->RESULT_OK:Lcom/avira/applock/e/h;

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 160
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 162
    sget-object v0, Lcom/avira/applock/e/h;->RESULT_ERROR_PIN_TOO_SHORT:Lcom/avira/applock/e/h;

    .line 180
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 166
    sget-object v0, Lcom/avira/applock/e/h;->RESULT_ERROR_PIN_TOO_LONG:Lcom/avira/applock/e/h;

    goto :goto_0

    .line 172
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    sget-object v0, Lcom/avira/applock/e/h;->RESULT_ERROR_PIN_NOT_NUMBER:Lcom/avira/applock/e/h;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/avira/applock/activities/d;)V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/avira/applock/e/g;->$SwitchMap$com$avira$applock$activities$CreatePinActivity$CreatePinScreenMode:[I

    invoke-virtual {p2}, Lcom/avira/applock/activities/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-static {p1}, Lcom/avira/applock/e/f;->a(Ljava/lang/String;)Lcom/avira/applock/e/h;

    move-result-object v0

    sget-object v1, Lcom/avira/applock/e/h;->RESULT_OK:Lcom/avira/applock/e/h;

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/avira/applock/e/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    iget-object v0, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    invoke-static {v0}, Lcom/avira/applock/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avira/applock/activities/d;->CONFIRM_CHANGE_PIN:Lcom/avira/applock/activities/d;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/CreatePinActivity;->a(Lcom/avira/applock/activities/d;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/avira/applock/activities/d;->CONFIRM_SETUP_PIN:Lcom/avira/applock/activities/d;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    iget-object v2, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    invoke-virtual {v0, v2}, Lcom/avira/applock/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/avira/applock/e/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    iget-object v1, p0, Lcom/avira/applock/e/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avira/applock/d/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/avira/applock/activities/d;->CONFIRM_CHANGE_PIN:Lcom/avira/applock/activities/d;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    sget v1, Lcom/avira/applock/f;->settings_screen_option_change_pin_successful:I

    invoke-static {v0, v1}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/CreatePinActivity;->setResult(I)V

    iget-object v0, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/CreatePinActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/avira/applock/e/f;->a:Lcom/avira/applock/activities/CreatePinActivity;

    sget v1, Lcom/avira/applock/f;->confirm_setup_pin_screen_pin_mismatch:I

    invoke-static {v0, v1}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
