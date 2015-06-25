.class public Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private detections:[Lcom/avira/android/threatlandscape/api/gson/DetectionData;

.field private metadata:[Lcom/avira/android/threatlandscape/api/gson/MetaData;

.field private product:Lcom/avira/android/threatlandscape/api/gson/ProductData;


# direct methods
.method public constructor <init>([Lcom/avira/android/threatlandscape/api/gson/DetectionData;Lcom/avira/android/threatlandscape/api/gson/ProductData;[Lcom/avira/android/threatlandscape/api/gson/MetaData;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;->detections:[Lcom/avira/android/threatlandscape/api/gson/DetectionData;

    .line 31
    iput-object p2, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;->product:Lcom/avira/android/threatlandscape/api/gson/ProductData;

    .line 32
    iput-object p3, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;->metadata:[Lcom/avira/android/threatlandscape/api/gson/MetaData;

    .line 33
    return-void
.end method
