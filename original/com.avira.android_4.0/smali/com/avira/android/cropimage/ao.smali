.class final Lcom/avira/android/cropimage/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/cropimage/an;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/an;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/avira/android/cropimage/ao;->a:Lcom/avira/android/cropimage/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/avira/android/cropimage/ao;->a:Lcom/avira/android/cropimage/an;

    invoke-static {v0}, Lcom/avira/android/cropimage/an;->a(Lcom/avira/android/cropimage/an;)Lcom/avira/android/cropimage/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/cropimage/ao;->a:Lcom/avira/android/cropimage/an;

    invoke-virtual {v0, v1}, Lcom/avira/android/cropimage/MonitoredActivity;->b(Lcom/avira/android/cropimage/ai;)V

    .line 494
    iget-object v0, p0, Lcom/avira/android/cropimage/ao;->a:Lcom/avira/android/cropimage/an;

    invoke-static {v0}, Lcom/avira/android/cropimage/an;->b(Lcom/avira/android/cropimage/an;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/avira/android/cropimage/ao;->a:Lcom/avira/android/cropimage/an;

    invoke-static {v0}, Lcom/avira/android/cropimage/an;->b(Lcom/avira/android/cropimage/an;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 496
    :cond_0
    return-void
.end method
