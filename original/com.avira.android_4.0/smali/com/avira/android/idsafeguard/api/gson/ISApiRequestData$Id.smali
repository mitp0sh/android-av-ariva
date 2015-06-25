.class Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deviceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;

.field private final uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;->this$0:Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;->uid:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;->deviceId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;-><init>(Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
