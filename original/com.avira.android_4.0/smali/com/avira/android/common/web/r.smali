.class public final enum Lcom/avira/android/common/web/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/common/web/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/common/web/r;

.field public static final enum AccountError:Lcom/avira/android/common/web/r;

.field public static final enum DeviceSideError:Lcom/avira/android/common/web/r;

.field public static final enum Ok:Lcom/avira/android/common/web/r;

.field public static final enum ServerSideError:Lcom/avira/android/common/web/r;

.field public static final enum Unknown:Lcom/avira/android/common/web/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/avira/android/common/web/r;

    const-string v1, "Ok"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/common/web/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    new-instance v0, Lcom/avira/android/common/web/r;

    const-string v1, "DeviceSideError"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/common/web/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/common/web/r;->DeviceSideError:Lcom/avira/android/common/web/r;

    new-instance v0, Lcom/avira/android/common/web/r;

    const-string v1, "ServerSideError"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/common/web/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/common/web/r;->ServerSideError:Lcom/avira/android/common/web/r;

    new-instance v0, Lcom/avira/android/common/web/r;

    const-string v1, "AccountError"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/common/web/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/common/web/r;->AccountError:Lcom/avira/android/common/web/r;

    new-instance v0, Lcom/avira/android/common/web/r;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/common/web/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/common/web/r;->Unknown:Lcom/avira/android/common/web/r;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avira/android/common/web/r;

    sget-object v1, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/common/web/r;->DeviceSideError:Lcom/avira/android/common/web/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/common/web/r;->ServerSideError:Lcom/avira/android/common/web/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/common/web/r;->AccountError:Lcom/avira/android/common/web/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/common/web/r;->Unknown:Lcom/avira/android/common/web/r;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avira/android/common/web/r;->$VALUES:[Lcom/avira/android/common/web/r;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/common/web/r;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/avira/android/common/web/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/common/web/r;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/common/web/r;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/avira/android/common/web/r;->$VALUES:[Lcom/avira/android/common/web/r;

    invoke-virtual {v0}, [Lcom/avira/android/common/web/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/common/web/r;

    return-object v0
.end method
