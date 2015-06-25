.class public final Lcom/avira/applock/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PASS_LENGTH:I = 0x12

.field public static final MIN_PASS_LENGTH:I = 0x6


# instance fields
.field private a:Lcom/avira/applock/activities/CreatePasswordActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/CreatePasswordActivity;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/applock/e/c;->b:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/avira/applock/activities/b;)V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/avira/applock/e/d;->$SwitchMap$com$avira$applock$activities$CreatePasswordActivity$CreatePasswordScreenMode:[I

    invoke-virtual {p2}, Lcom/avira/applock/activities/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    sget-object v0, Lcom/avira/applock/e/e;->RESULT_OK:Lcom/avira/applock/e/e;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    sget-object v0, Lcom/avira/applock/e/e;->RESULT_ERROR_PASS_TOO_SHORT:Lcom/avira/applock/e/e;

    :cond_0
    :goto_1
    sget-object v1, Lcom/avira/applock/e/e;->RESULT_OK:Lcom/avira/applock/e/e;

    if-ne v0, v1, :cond_3

    iput-object p1, p0, Lcom/avira/applock/e/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    iget-object v0, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-static {v0}, Lcom/avira/applock/d/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avira/applock/activities/b;->CONFIRM_CHANGE_PASSWORD:Lcom/avira/applock/activities/b;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/CreatePasswordActivity;->a(Lcom/avira/applock/activities/b;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    sget-object v0, Lcom/avira/applock/e/e;->RESULT_ERROR_PASS_TOO_LONG:Lcom/avira/applock/e/e;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/avira/applock/activities/b;->CONFIRM_SETUP_PASSWORD:Lcom/avira/applock/activities/b;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    iget-object v2, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-virtual {v0, v2}, Lcom/avira/applock/e/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/avira/applock/e/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    iget-object v1, p0, Lcom/avira/applock/e/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avira/applock/d/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/avira/applock/activities/b;->CONFIRM_CHANGE_PASSWORD:Lcom/avira/applock/activities/b;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    sget v1, Lcom/avira/applock/f;->settings_screen_option_change_pass_successful:I

    invoke-static {v0, v1}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;I)V

    :cond_4
    iget-object v0, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/CreatePasswordActivity;->setResult(I)V

    iget-object v0, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/CreatePasswordActivity;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/avira/applock/e/c;->a:Lcom/avira/applock/activities/CreatePasswordActivity;

    sget v1, Lcom/avira/applock/f;->confirm_setup_pass_screen_pass_mismatch:I

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
