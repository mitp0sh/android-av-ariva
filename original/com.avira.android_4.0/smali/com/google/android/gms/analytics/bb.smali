.class final Lcom/google/android/gms/analytics/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ao;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/ba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bb;->a:Lcom/google/android/gms/analytics/ba;

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
