.class public Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private detection:Lcom/avira/android/threatlandscape/api/gson/DetectionData;

.field private metadata:Lcom/avira/android/threatlandscape/api/gson/MetaData;

.field private product:Lcom/avira/android/threatlandscape/api/gson/ProductData;


# direct methods
.method public constructor <init>(Lcom/avira/android/threatlandscape/api/gson/DetectionData;Lcom/avira/android/threatlandscape/api/gson/ProductData;Lcom/avira/android/threatlandscape/api/gson/MetaData;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;->detection:Lcom/avira/android/threatlandscape/api/gson/DetectionData;

    .line 32
    iput-object p2, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;->product:Lcom/avira/android/threatlandscape/api/gson/ProductData;

    .line 33
    iput-object p3, p0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;->metadata:Lcom/avira/android/threatlandscape/api/gson/MetaData;

    .line 34
    return-void
.end method
