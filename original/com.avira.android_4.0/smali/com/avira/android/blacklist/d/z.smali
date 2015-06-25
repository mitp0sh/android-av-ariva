.class public final Lcom/avira/android/blacklist/d/z;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/v;


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/d/v;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/avira/android/blacklist/d/z;->a:Lcom/avira/android/blacklist/d/v;

    .line 89
    invoke-static {}, Lcom/avira/android/blacklist/d/v;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 97
    invoke-static {}, Lcom/avira/android/blacklist/d/v;->d()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    :cond_0
    return-void
.end method
