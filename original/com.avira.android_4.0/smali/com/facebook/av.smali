.class public final enum Lcom/facebook/av;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/av;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/av;

.field public static final enum APP_EVENTS:Lcom/facebook/av;

.field public static final enum CACHE:Lcom/facebook/av;

.field public static final enum DEVELOPER_ERRORS:Lcom/facebook/av;

.field public static final enum INCLUDE_ACCESS_TOKENS:Lcom/facebook/av;

.field public static final enum INCLUDE_RAW_RESPONSES:Lcom/facebook/av;

.field public static final INSIGHTS:Lcom/facebook/av;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum REQUESTS:Lcom/facebook/av;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/facebook/av;

    const-string v1, "REQUESTS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    .line 32
    new-instance v0, Lcom/facebook/av;

    const-string v1, "INCLUDE_ACCESS_TOKENS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/av;

    .line 36
    new-instance v0, Lcom/facebook/av;

    const-string v1, "INCLUDE_RAW_RESPONSES"

    invoke-direct {v0, v1, v5}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->INCLUDE_RAW_RESPONSES:Lcom/facebook/av;

    .line 40
    new-instance v0, Lcom/facebook/av;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->CACHE:Lcom/facebook/av;

    .line 44
    new-instance v0, Lcom/facebook/av;

    const-string v1, "APP_EVENTS"

    invoke-direct {v0, v1, v7}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    .line 48
    new-instance v0, Lcom/facebook/av;

    const-string v1, "DEVELOPER_ERRORS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/av;->DEVELOPER_ERRORS:Lcom/facebook/av;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/av;

    sget-object v1, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/av;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/av;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/av;->INCLUDE_RAW_RESPONSES:Lcom/facebook/av;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/av;->CACHE:Lcom/facebook/av;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/av;->DEVELOPER_ERRORS:Lcom/facebook/av;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/av;->$VALUES:[Lcom/facebook/av;

    .line 52
    sget-object v0, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    sput-object v0, Lcom/facebook/av;->INSIGHTS:Lcom/facebook/av;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/av;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/av;

    return-object v0
.end method

.method public static values()[Lcom/facebook/av;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/av;->$VALUES:[Lcom/facebook/av;

    invoke-virtual {v0}, [Lcom/facebook/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/av;

    return-object v0
.end method
