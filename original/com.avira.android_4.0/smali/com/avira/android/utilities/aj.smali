.class public final Lcom/avira/android/utilities/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    return-void
.end method
