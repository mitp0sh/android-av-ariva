.class final Lcom/avira/applock/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/applock/e/j;


# direct methods
.method constructor <init>(Lcom/avira/applock/e/j;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v0}, Lcom/avira/applock/e/j;->a(Lcom/avira/applock/e/j;)V

    .line 158
    iget-object v0, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v0}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->c()V

    .line 160
    iget v0, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    sparse-switch v0, :sswitch_data_0

    .line 177
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v1}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v1

    sget v2, Lcom/avira/applock/f;->backend_unknown_error_title:I

    sget v3, Lcom/avira/applock/f;->backend_unknown_error:I

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/a;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v1}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/a;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 181
    :goto_0
    return-void

    .line 164
    :sswitch_0
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v1}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v1

    sget v2, Lcom/avira/applock/f;->recover_pin_via_email_screen_unlock_failed:I

    sget v3, Lcom/avira/applock/f;->recover_pin_via_email_screen_wrong_reset_code:I

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/a;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v1}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/a;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 170
    :sswitch_1
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v1}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v1

    sget v2, Lcom/avira/applock/f;->recover_pin_via_email_screen_unlock_failed:I

    sget v3, Lcom/avira/applock/f;->recover_pin_via_email_screen_reset_code_expired:I

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/a;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v1}, Lcom/avira/applock/e/j;->c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/a;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x38f -> :sswitch_0
        0x393 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v0}, Lcom/avira/applock/e/j;->a(Lcom/avira/applock/e/j;)V

    .line 150
    iget-object v0, p0, Lcom/avira/applock/e/k;->a:Lcom/avira/applock/e/j;

    invoke-static {v0}, Lcom/avira/applock/e/j;->b(Lcom/avira/applock/e/j;)V

    .line 151
    return-void
.end method
