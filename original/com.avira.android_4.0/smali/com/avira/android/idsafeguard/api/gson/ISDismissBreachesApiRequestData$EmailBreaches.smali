.class public Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final breaches:[I

.field private final email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;->email:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;->breaches:[I

    .line 55
    return-void
.end method
