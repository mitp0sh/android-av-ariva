.class public final Lcom/google/android/gms/analytics/f;
.super Lcom/google/android/gms/analytics/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/h",
        "<",
        "Lcom/google/android/gms/analytics/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/h;-><init>()V

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->tv:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    const-string v0, "&t"

    const-string v1, "appview"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/analytics/h;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
