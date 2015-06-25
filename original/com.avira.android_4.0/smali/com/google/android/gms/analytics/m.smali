.class final Lcom/google/android/gms/analytics/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ao;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/k;

.field final synthetic b:Lcom/google/android/gms/analytics/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/l;Lcom/google/android/gms/analytics/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/m;->b:Lcom/google/android/gms/analytics/l;

    iput-object p2, p0, Lcom/google/android/gms/analytics/m;->a:Lcom/google/android/gms/analytics/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
