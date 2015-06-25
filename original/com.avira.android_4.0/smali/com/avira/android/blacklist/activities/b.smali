.class public final enum Lcom/avira/android/blacklist/activities/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/blacklist/activities/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/blacklist/activities/b;

.field public static final enum Blacklist:Lcom/avira/android/blacklist/activities/b;

.field public static final enum History:Lcom/avira/android/blacklist/activities/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/avira/android/blacklist/activities/b;

    const-string v1, "Blacklist"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/activities/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/activities/b;->Blacklist:Lcom/avira/android/blacklist/activities/b;

    new-instance v0, Lcom/avira/android/blacklist/activities/b;

    const-string v1, "History"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/blacklist/activities/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/activities/b;->History:Lcom/avira/android/blacklist/activities/b;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/blacklist/activities/b;

    sget-object v1, Lcom/avira/android/blacklist/activities/b;->Blacklist:Lcom/avira/android/blacklist/activities/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/blacklist/activities/b;->History:Lcom/avira/android/blacklist/activities/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/blacklist/activities/b;->$VALUES:[Lcom/avira/android/blacklist/activities/b;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/activities/b;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/avira/android/blacklist/activities/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/activities/b;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/blacklist/activities/b;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/avira/android/blacklist/activities/b;->$VALUES:[Lcom/avira/android/blacklist/activities/b;

    invoke-virtual {v0}, [Lcom/avira/android/blacklist/activities/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/blacklist/activities/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/b;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
