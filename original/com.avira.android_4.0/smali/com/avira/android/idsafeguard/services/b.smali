.class public final enum Lcom/avira/android/idsafeguard/services/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/idsafeguard/services/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/idsafeguard/services/b;

.field public static final enum ACTIVE:Lcom/avira/android/idsafeguard/services/b;

.field public static final enum IDLE:Lcom/avira/android/idsafeguard/services/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/avira/android/idsafeguard/services/b;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/services/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    new-instance v0, Lcom/avira/android/idsafeguard/services/b;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/idsafeguard/services/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/idsafeguard/services/b;

    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/idsafeguard/services/b;->$VALUES:[Lcom/avira/android/idsafeguard/services/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/idsafeguard/services/b;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/avira/android/idsafeguard/services/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/services/b;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/idsafeguard/services/b;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/avira/android/idsafeguard/services/b;->$VALUES:[Lcom/avira/android/idsafeguard/services/b;

    invoke-virtual {v0}, [Lcom/avira/android/idsafeguard/services/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/idsafeguard/services/b;

    return-object v0
.end method
