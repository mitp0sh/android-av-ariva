.class final Lcom/avira/applock/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/applock/e/l;


# direct methods
.method constructor <init>(Lcom/avira/applock/e/l;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v0}, Lcom/avira/applock/e/l;->a(Lcom/avira/applock/e/l;)V

    .line 157
    iget v0, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v1, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v1}, Lcom/avira/applock/e/l;->c(Lcom/avira/applock/e/l;)Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    move-result-object v1

    sget v2, Lcom/avira/applock/f;->backend_unknown_error_title:I

    sget v3, Lcom/avira/applock/f;->backend_unknown_error:I

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/a;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v1}, Lcom/avira/applock/e/l;->c(Lcom/avira/applock/e/l;)Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/a;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 171
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v0}, Lcom/avira/applock/e/l;->b(Lcom/avira/applock/e/l;)V

    .line 162
    iget-object v0, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v0}, Lcom/avira/applock/e/l;->c(Lcom/avira/applock/e/l;)Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->finish()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x38e
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v0}, Lcom/avira/applock/e/l;->a(Lcom/avira/applock/e/l;)V

    .line 148
    iget-object v0, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v0}, Lcom/avira/applock/e/l;->b(Lcom/avira/applock/e/l;)V

    .line 149
    iget-object v0, p0, Lcom/avira/applock/e/m;->a:Lcom/avira/applock/e/l;

    invoke-static {v0}, Lcom/avira/applock/e/l;->c(Lcom/avira/applock/e/l;)Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->finish()V

    .line 150
    return-void
.end method
