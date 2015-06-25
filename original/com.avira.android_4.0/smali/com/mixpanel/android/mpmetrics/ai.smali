.class final Lcom/mixpanel/android/mpmetrics/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/ah;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/ah;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ai;->a:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/ah;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ai;->a:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ah;->a(Lcom/mixpanel/android/mpmetrics/ah;)V

    .line 77
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/ah;->g()Z

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
