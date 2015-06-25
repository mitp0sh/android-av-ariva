.class public final enum Lcom/facebook/aq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/aq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/aq;

.field public static final enum AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/aq;

.field public static final enum AUTHENTICATION_RETRY:Lcom/facebook/aq;

.field public static final enum BAD_REQUEST:Lcom/facebook/aq;

.field public static final enum CLIENT:Lcom/facebook/aq;

.field public static final enum OTHER:Lcom/facebook/aq;

.field public static final enum PERMISSION:Lcom/facebook/aq;

.field public static final enum SERVER:Lcom/facebook/aq;

.field public static final enum THROTTLING:Lcom/facebook/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "AUTHENTICATION_RETRY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->AUTHENTICATION_RETRY:Lcom/facebook/aq;

    .line 470
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "AUTHENTICATION_REOPEN_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/aq;

    .line 473
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "PERMISSION"

    invoke-direct {v0, v1, v5}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->PERMISSION:Lcom/facebook/aq;

    .line 479
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->SERVER:Lcom/facebook/aq;

    .line 482
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "THROTTLING"

    invoke-direct {v0, v1, v7}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->THROTTLING:Lcom/facebook/aq;

    .line 488
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->OTHER:Lcom/facebook/aq;

    .line 494
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->BAD_REQUEST:Lcom/facebook/aq;

    .line 500
    new-instance v0, Lcom/facebook/aq;

    const-string v1, "CLIENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/aq;->CLIENT:Lcom/facebook/aq;

    .line 459
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/aq;

    sget-object v1, Lcom/facebook/aq;->AUTHENTICATION_RETRY:Lcom/facebook/aq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/aq;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/aq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/aq;->PERMISSION:Lcom/facebook/aq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/aq;->SERVER:Lcom/facebook/aq;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/aq;->THROTTLING:Lcom/facebook/aq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/aq;->OTHER:Lcom/facebook/aq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/aq;->BAD_REQUEST:Lcom/facebook/aq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/aq;->CLIENT:Lcom/facebook/aq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/aq;->$VALUES:[Lcom/facebook/aq;

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
    .line 459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/aq;
    .locals 1

    .prologue
    .line 459
    const-class v0, Lcom/facebook/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/aq;

    return-object v0
.end method

.method public static values()[Lcom/facebook/aq;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/facebook/aq;->$VALUES:[Lcom/facebook/aq;

    invoke-virtual {v0}, [Lcom/facebook/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/aq;

    return-object v0
.end method
