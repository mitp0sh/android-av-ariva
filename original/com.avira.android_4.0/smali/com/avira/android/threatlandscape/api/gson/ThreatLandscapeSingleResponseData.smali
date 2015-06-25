.class public Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResponseEnabled()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleResponseData;->enabled:Z

    return v0
.end method
