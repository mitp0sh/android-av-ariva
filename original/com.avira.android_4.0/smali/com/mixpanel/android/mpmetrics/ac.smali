.class final Lcom/mixpanel/android/mpmetrics/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI:MixpanelActivityLifecycleCallbacks"


# instance fields
.field private final a:Lcom/mixpanel/android/mpmetrics/r;

.field private b:Z

.field private c:Ljava/lang/Integer;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/r;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->b:Z

    .line 154
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->d:J

    .line 17
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ac;->a:Lcom/mixpanel/android/mpmetrics/r;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/ac;)Lcom/mixpanel/android/mpmetrics/r;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->a:Lcom/mixpanel/android/mpmetrics/r;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mixpanel/android/mpmetrics/ac;->b:Z

    .line 90
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ac;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v2

    new-instance v3, Lcom/mixpanel/android/mpmetrics/ad;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/mixpanel/android/mpmetrics/ad;-><init>(Lcom/mixpanel/android/mpmetrics/ac;Landroid/app/Activity;J)V

    invoke-interface {v2, v3, p1}, Lcom/mixpanel/android/mpmetrics/v;->a(Lcom/mixpanel/android/mpmetrics/at;Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 37
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ac;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    .line 38
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/ac;->b(Landroid/app/Activity;)V

    .line 42
    :cond_0
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->c:Ljava/lang/Integer;

    .line 43
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/ac;->c:Ljava/lang/Integer;

    .line 59
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/ac;->b(Landroid/app/Activity;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
