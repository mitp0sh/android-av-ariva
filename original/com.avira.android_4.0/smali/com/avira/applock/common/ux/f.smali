.class public final enum Lcom/avira/applock/common/ux/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/applock/common/ux/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/applock/common/ux/f;

.field public static final enum BACKGROUND:Lcom/avira/applock/common/ux/f;

.field public static final enum HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

.field public static final enum NON_HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

.field public static final enum PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

.field public static final enum SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/avira/applock/common/ux/f;

    const-string v1, "SCROLLVIEW_CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/common/ux/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    new-instance v0, Lcom/avira/applock/common/ux/f;

    const-string v1, "PARALLAX_HEADER"

    invoke-direct {v0, v1, v3}, Lcom/avira/applock/common/ux/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    new-instance v0, Lcom/avira/applock/common/ux/f;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v4}, Lcom/avira/applock/common/ux/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    new-instance v0, Lcom/avira/applock/common/ux/f;

    const-string v1, "HIDEABLE_OVERLAY_TOP"

    invoke-direct {v0, v1, v5}, Lcom/avira/applock/common/ux/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/common/ux/f;->HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    new-instance v0, Lcom/avira/applock/common/ux/f;

    const-string v1, "NON_HIDEABLE_OVERLAY_TOP"

    invoke-direct {v0, v1, v6}, Lcom/avira/applock/common/ux/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/common/ux/f;->NON_HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avira/applock/common/ux/f;

    sget-object v1, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/applock/common/ux/f;->HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/applock/common/ux/f;->NON_HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avira/applock/common/ux/f;->$VALUES:[Lcom/avira/applock/common/ux/f;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/applock/common/ux/f;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/avira/applock/common/ux/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/common/ux/f;

    return-object v0
.end method

.method public static values()[Lcom/avira/applock/common/ux/f;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/avira/applock/common/ux/f;->$VALUES:[Lcom/avira/applock/common/ux/f;

    invoke-virtual {v0}, [Lcom/avira/applock/common/ux/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/applock/common/ux/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/f;->ordinal()I

    move-result v0

    return v0
.end method
