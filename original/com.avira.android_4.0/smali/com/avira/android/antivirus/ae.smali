.class public final enum Lcom/avira/android/antivirus/ae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antivirus/ae;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antivirus/ae;

.field public static final enum MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

.field public static final enum MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avira/android/antivirus/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/avira/android/antivirus/ae;

    const-string v1, "MAVAPI_UPDATE_ACTION_IDLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/avira/android/antivirus/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    new-instance v0, Lcom/avira/android/antivirus/ae;

    const-string v1, "MAVAPI_UPDATE_ACTION_IN_PROGRESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/avira/android/antivirus/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/antivirus/ae;

    sget-object v1, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/antivirus/ae;->$VALUES:[Lcom/avira/android/antivirus/ae;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/ae;->lookup:Ljava/util/Map;

    .line 27
    const-class v0, Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/ae;

    .line 29
    sget-object v2, Lcom/avira/android/antivirus/ae;->lookup:Ljava/util/Map;

    iget v3, v0, Lcom/avira/android/antivirus/ae;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/avira/android/antivirus/ae;->a:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antivirus/ae;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/avira/android/antivirus/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/ae;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antivirus/ae;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/avira/android/antivirus/ae;->$VALUES:[Lcom/avira/android/antivirus/ae;

    invoke-virtual {v0}, [Lcom/avira/android/antivirus/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/ae;

    return-object v0
.end method
