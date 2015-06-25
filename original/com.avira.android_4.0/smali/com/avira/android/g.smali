.class final Lcom/avira/android/g;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final DISMISS_PROGRESS_DIALOG:I = 0x0

.field public static final SHOW_PROGRESS_DIALOG:I = 0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 361
    iput-object p2, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    .line 362
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/android/g;->sendEmptyMessage(I)Z

    .line 415
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    iput-object p1, p0, Lcom/avira/android/g;->a:Landroid/content/Context;

    .line 404
    iput-object p2, p0, Lcom/avira/android/g;->b:Ljava/lang/String;

    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avira/android/g;->sendEmptyMessage(I)Z

    .line 407
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/android/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/avira/android/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/avira/android/g;->a:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/avira/android/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/avira/android/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
