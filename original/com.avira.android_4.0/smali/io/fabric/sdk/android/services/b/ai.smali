.class public final Lio/fabric/sdk/android/services/b/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/b/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method