.class final Lcom/mixpanel/android/mpmetrics/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/ap;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/ad;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/ad;Lcom/mixpanel/android/mpmetrics/ap;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/ae;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ad;->c:Lcom/mixpanel/android/mpmetrics/ac;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ad;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ac;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-wide v2, v2, Lcom/mixpanel/android/mpmetrics/ad;->b:J

    sub-long/2addr v0, v2

    .line 102
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ae;->a:Lcom/mixpanel/android/mpmetrics/ap;

    if-eqz v2, :cond_0

    .line 104
    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ad;->c:Lcom/mixpanel/android/mpmetrics/ac;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ac;->a(Lcom/mixpanel/android/mpmetrics/ac;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/ae;->a:Lcom/mixpanel/android/mpmetrics/ap;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/ad;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/v;->a(Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/ad;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    const-string v1, "We\'d love your feedback!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    const-string v1, "Mind taking a quick survey?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string v1, "Sure"

    new-instance v2, Lcom/mixpanel/android/mpmetrics/af;

    invoke-direct {v2, p0}, Lcom/mixpanel/android/mpmetrics/af;-><init>(Lcom/mixpanel/android/mpmetrics/ae;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    const-string v1, "No, Thanks"

    new-instance v2, Lcom/mixpanel/android/mpmetrics/ag;

    invoke-direct {v2, p0}, Lcom/mixpanel/android/mpmetrics/ag;-><init>(Lcom/mixpanel/android/mpmetrics/ae;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
