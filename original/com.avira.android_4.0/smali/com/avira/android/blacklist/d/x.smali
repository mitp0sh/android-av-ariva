.class final Lcom/avira/android/blacklist/d/x;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/avira/android/blacklist/d/v;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/d/v;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avira/android/blacklist/d/x;->b:Lcom/avira/android/blacklist/d/v;

    iput-object p3, p0, Lcom/avira/android/blacklist/d/x;->a:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/avira/android/blacklist/d/x;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    :cond_0
    return-void
.end method
