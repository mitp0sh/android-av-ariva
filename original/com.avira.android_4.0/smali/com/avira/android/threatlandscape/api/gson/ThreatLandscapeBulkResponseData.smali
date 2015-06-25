.class public Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field enabled:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledList()[Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkResponseData;->enabled:[Z

    return-object v0
.end method
