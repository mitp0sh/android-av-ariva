.class public Lcom/avira/android/idsafeguard/api/gson/ISRecentBreachesRequestData;
.super Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;
.source "SourceFile"


# instance fields
.field private language:Ljava/lang/String;

.field private limit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p3, p0, Lcom/avira/android/idsafeguard/api/gson/ISRecentBreachesRequestData;->language:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/avira/android/idsafeguard/api/gson/ISRecentBreachesRequestData;->limit:I

    .line 37
    return-void
.end method
