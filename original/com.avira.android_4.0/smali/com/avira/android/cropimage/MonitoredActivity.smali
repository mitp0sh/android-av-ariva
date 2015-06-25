.class public Lcom/avira/android/cropimage/MonitoredActivity;
.super Lcom/avira/android/cropimage/NoSearchActivity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/cropimage/ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/android/cropimage/NoSearchActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/cropimage/ai;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Lcom/avira/android/cropimage/ai;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/avira/android/cropimage/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/avira/android/cropimage/NoSearchActivity;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/ai;

    .line 89
    invoke-interface {v0}, Lcom/avira/android/cropimage/ai;->a()V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/avira/android/cropimage/NoSearchActivity;->onStart()V

    .line 97
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/ai;

    .line 99
    invoke-interface {v0}, Lcom/avira/android/cropimage/ai;->b()V

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/avira/android/cropimage/NoSearchActivity;->onStop()V

    .line 107
    iget-object v0, p0, Lcom/avira/android/cropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/ai;

    .line 109
    invoke-interface {v0}, Lcom/avira/android/cropimage/ai;->c()V

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method
