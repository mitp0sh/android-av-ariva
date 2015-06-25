.class final Lcom/mixpanel/android/mpmetrics/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/ao;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/r;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/r;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/s;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 111
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/ah;->a(Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/s;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Lorg/json/JSONArray;)V

    .line 115
    :cond_0
    return-void
.end method
